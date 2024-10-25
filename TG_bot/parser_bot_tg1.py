# главный файл с ботом и работой остальных модулей
from aiogram import Bot, Dispatcher, executor, types
from aiogram.types import BotCommand, BotCommandScopeDefault
from aiogram.contrib.fsm_storage.memory import MemoryStorage
from aiogram.types import ParseMode
from aiogram.types import KeyboardButton, InlineKeyboardButton, InlineKeyboardMarkup, ReplyKeyboardMarkup
import logging
from aiogram.dispatcher import FSMContext
from aiogram.dispatcher.filters.state import State, StatesGroup

import asyncio

# созданные модули для работы с расписанием
import funcbot
import parser
import readexcel

from CONFIG import *

class Form(StatesGroup):
    FIO = State()


bot = Bot(token=BOT_TOKEN,
          parse_mode=types.ParseMode.HTML)
dp = Dispatcher(bot, storage=MemoryStorage())
logging.basicConfig(level=logging.INFO)

async def set_default_commands(bot: Bot):
    return await bot.set_my_commands(
        commands=[
            BotCommand('start', 'Перезапустить бота'),
            BotCommand('auth', 'Авторизация'),
            BotCommand('manager', 'Задать вопрос'),
        ],
        scope=BotCommandScopeDefault()
    )

photo_rasp = 'https://t.me/forbot_nikita/13'

@dp.message_handler(commands='start')
async def command_start(message: types.Message):
    await message.reply(f'Привет, {message.from_user.first_name}! Для начала необходимо авторизоваться')
    await set_default_commands(bot)
    
@dp.message_handler(commands='auth')
async def command_start(message: types.Message):
    await Form.FIO.set()
    await message.reply(f'Введите свое ФИО(формат: Иванов Иван Иванович)')

@dp.message_handler(commands='manager')
async def command_manager(message: types.Message):
    await message.reply('Если у Вас возникли проблемы, Вы можете задать их нам!',
                        reply_markup=manager_kb())

@dp.message_handler(state=Form.FIO)
async def authentication(message: types.Message, state: FSMContext):
    async with state.proxy() as data:
        fio= message.text.split(' ')
        global user 
        try:
            user = funcbot.Funcbot(name=fio[1],surname=fio[2],lastname=fio[0])
            if user.checkuser():
                await message.reply("Супер ты действительно студент 24КНТ, лови доступ", reply_markup=kb)
            else:
                del user
                await message.reply("Хм, пользователь не найден, попробуйте ещё раз")
        except:
            await message.reply("Хм, пользователь не найден, попробуйте ещё раз")
    await state.finish()

@dp.message_handler(text='Задать вопрос')
async def command_manager(message: types.Message):
    await message.reply('Если у Вас возникли проблемы, Вы можете задать их нам!',
                        reply_markup=manager_kb())

@dp.message_handler(text='⬅️Назад')
async def chat(message: types.Message):
    await message.reply('Вы вернулись назад', reply_markup=kb)

@dp.message_handler(text='Учебный календарь')
async def description(message: types.Message):
    await message.reply('Учебный календарь на 2024/2025')
    await bot.send_photo(chat_id=message.chat.id,
                         photo=photo_rasp,
                         reply_markup=kb,
                         parse_mode=ParseMode.MARKDOWN)

kb = ReplyKeyboardMarkup(resize_keyboard=True)
kb.add(KeyboardButton('Расписание')).insert(KeyboardButton('Учебный календарь')).add(KeyboardButton('Задать вопрос'))

@dp.message_handler(text='Расписание')
async def price(message: types.Message):
    markup = types.ReplyKeyboardMarkup(resize_keyboard=True, selective=True)
    markup.add("⬅️Назад")
    await bot.send_message(message.chat.id, 'Требуется выбрать поток', reply_markup=markup)
    btn_1 = (types.InlineKeyboardButton(text='1 поток', callback_data='pot_1'))
    btn_2 = (types.InlineKeyboardButton(text='2 поток', callback_data='pot_2'))
    btn_3 = (types.InlineKeyboardButton(text='3 поток', callback_data='pot_3'))
    keyboard = types.InlineKeyboardMarkup(row_width=3)
    keyboard.add(btn_1).add(btn_2).add(btn_3)
    await bot.send_message(chat_id=message.chat.id,
                           text="Выбери свой поток:",
                           parse_mode=ParseMode.MARKDOWN,
                           reply_markup=keyboard)



@dp.callback_query_handler(text=['pot_1', 'pot_2', 'pot_3'])
async def first_btn_process(call: types.CallbackQuery):
    answer = call.data.split("_")
    await call.message.answer(text="Какая у тебя группа?",
                                parse_mode=ParseMode.MARKDOWN,
                                reply_markup=pot_gr(answer[1]))

def pot_gr(potok):
    kb = InlineKeyboardMarkup()
    btn1 = InlineKeyboardButton(text=f'24КНТ-{int(potok)*3-2}', callback_data=f'{potok}_1')
    btn2 = InlineKeyboardButton(text=f'24КНТ-{int(potok)*3-1}', callback_data=f'{potok}_2')
    btn3 = InlineKeyboardButton(text=f'24КНТ-{int(potok)*3}', callback_data=f'{potok}_3')
    kb.add(btn1, btn2, btn3)
    return kb

@dp.callback_query_handler(text=['1_1', '1_2', '1_3','2_1','2_2','2_3','3_1','3_2','3_3'])
async def first_btn_process(call: types.CallbackQuery):
    answer = call.data.split('_')
    await call.message.answer(text="Выберите день недели",
                                  parse_mode=ParseMode.MARKDOWN,
                                  reply_markup=ned(answer[0],answer[1]))

def ned(potok, group):
    kb = InlineKeyboardMarkup()
    btn1 = InlineKeyboardButton(text='Расписание на всю неделю', callback_data=f'ful_{potok}_{group}')
    btn2 = InlineKeyboardButton(text='ПН', callback_data=f'mon_{potok}_{group}')
    btn3 = InlineKeyboardButton(text='ВТ', callback_data=f'tue_{potok}_{group}')
    btn4 = InlineKeyboardButton(text='СР', callback_data=f'wed_{potok}_{group}')
    btn5 = InlineKeyboardButton(text='ЧТ', callback_data=f'th_{potok}_{group}')
    btn6 = InlineKeyboardButton(text='ПТ', callback_data=f'fr_{potok}_{group}')
    btn7 = InlineKeyboardButton(text='СБ', callback_data=f'su_{potok}_{group}')
    kb.add(btn2, btn3, btn4, btn5, btn6, btn7, btn1)
    return kb

@dp.callback_query_handler()
async def first_btn_process(call: types.CallbackQuery):
    answer =call.data.split('_')
    user.addgroup((abs(int(answer[1]))-1)*3+abs(int(answer[2])))
    if answer[0] == 'ful':
        await call.message.answer(text=f'Лови расписание на неделю:\n\n {user.weektimetable(week)}',
                                  parse_mode=ParseMode.MARKDOWN)
    elif answer[0] == 'mon':
        await call.message.answer(text=f'Лови расписание на понедельник:\n\n{user.daytimetable("Пн",week)}',
                                  parse_mode=ParseMode.MARKDOWN)
    elif answer[0] == 'tue':
        await call.message.answer(text=f'Лови расписание на вторник:\n\n{user.daytimetable("Вт",week)}',
                                  parse_mode=ParseMode.MARKDOWN)
    elif answer[0] == 'wed':
        await call.message.answer(text=f'Лови расписание на среду:\n\n{user.daytimetable("Ср",week)}',
                                  parse_mode=ParseMode.MARKDOWN)
    elif answer[0] == 'th':
        await call.message.answer(text=f'Лови расписание на четверг:\n\nСмотри свое расписание Английского по группам \n{user.daytimetable("Чт",week)}',
                                  parse_mode=ParseMode.MARKDOWN)
    elif answer[0] == 'fr':
        await call.message.answer(text=f'Лови расписание на пятницу:\n\n{user.daytimetable("Пт",week)}',
                                  parse_mode=ParseMode.MARKDOWN)
    else:
        await call.message.answer(text=f'Лови расписание на субботу:\n\n{user.daytimetable("Сб",week)}',
                                  parse_mode=ParseMode.MARKDOWN)
def manager_kb():
    kb = InlineKeyboardMarkup()
    btn = InlineKeyboardButton(text="Чат с менеджером", callback_data='manager', url='http://t.me/deccersw')
    kb.add(btn)
    return kb

async def background_on_start() -> None:
    await asyncio.sleep(5)
    while True:
        task =asyncio.create_task(weekreload())
        #скачиваем табличку
        downloader = parser.GetDownloadFile()
        downloader.download()
        #обновляем бд
        readexcel.updateexcel
        await asyncio.sleep(43200)

# установка четной/нечетной недели
async def weekreload():
    await asyncio.sleep(10)
    global week 
    week = funcbot.weekreload()
    await asyncio.sleep(86400)

    
# асинхронно запускаем другие необходимые модули
async def on_bot_start_up(dispatcher: Dispatcher) -> None:
    asyncio.create_task(background_on_start())  

if __name__ == '__main__':
    executor.start_polling(dp, skip_updates=True, on_startup=on_bot_start_up)
