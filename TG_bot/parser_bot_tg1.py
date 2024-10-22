from aiogram import Bot, Dispatcher, executor, types
from aiogram.types import BotCommand, BotCommandScopeDefault
from aiogram.contrib.fsm_storage.memory import MemoryStorage
from aiogram.types import ParseMode
from aiogram.types import KeyboardButton, InlineKeyboardButton, InlineKeyboardMarkup, ReplyKeyboardMarkup
import logging

BOT_TOKEN = '7876433666:AAF6umP9BV0gMZSNzA1wChsbG5X7TF4FqJk'
bot = Bot(token=BOT_TOKEN,
          parse_mode=types.ParseMode.HTML)
dp = Dispatcher(bot, storage=MemoryStorage())
logging.basicConfig(level=logging.INFO)

async def set_default_commands(bot: Bot):
    return await bot.set_my_commands(
        commands=[
            BotCommand('start', 'Запустить бота'),
            BotCommand('schedule', 'Расписание'),
            BotCommand('manager', 'Задать вопрос'),
        ],
        scope=BotCommandScopeDefault()
    )

photo_rasp = 'https://t.me/forbot_nikita/13'

@dp.message_handler(commands='start')
async def command_start(message: types.Message):
    await message.reply(f'Привет, {message.from_user.first_name}!',
                        reply_markup=kb)
    await set_default_commands(bot)

@dp.message_handler(commands='manager')
async def command_manager(message: types.Message):
    await message.reply('Если у Вас возникли вопросы, Вы можете задать их нам!',
                        reply_markup=manager_kb())

@dp.message_handler(text='⬅️Назад')
async def chat(message: types.Message):
    await message.reply('Вы вернулись назад', reply_markup=kb)

@dp.message_handler(text='Учебный календаь')
async def description(message: types.Message):
    await bot.send_photo(chat_id=message.chat.id,
                         text="Лови",
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
    if call.data == 'pot_1':
        await call.message.answer(text="Какая у тебя группа?",
                                  parse_mode=ParseMode.MARKDOWN,
                                  reply_markup=pot_1_gr())
    elif call.data == 'pot_2':
        await call.message.answer(text="Какая у тебя группа?",
                                  parse_mode=ParseMode.MARKDOWN,
                                  reply_markup=pot_2_gr())

    else:
        await call.message.answer(text="Какая у тебя группа?",
                                  parse_mode=ParseMode.MARKDOWN,
                                  reply_markup=pot_3_gr())

def pot_1_gr():
    kb = InlineKeyboardMarkup()
    btn1 = InlineKeyboardButton(text='24КНТ-1', callback_data='pot1_gr1')
    btn2 = InlineKeyboardButton(text='24КНТ-2', callback_data='pot1_gr2')
    btn3 = InlineKeyboardButton(text='24КНТ-3', callback_data='pot1_gr3')
    kb.add(btn1, btn2, btn3)
    return kb

def pot_2_gr():
    kb = InlineKeyboardMarkup()
    btn1 = InlineKeyboardButton(text='24КНТ-4', callback_data='pot2_gr4')
    btn2 = InlineKeyboardButton(text='24КНТ-5', callback_data='pot2_gr5')
    btn3 = InlineKeyboardButton(text='24КНТ-6', callback_data='pot2_gr6')
    kb.add(btn1, btn2, btn3)
    return kb

def pot_3_gr():
    kb = InlineKeyboardMarkup()
    btn1 = InlineKeyboardButton(text='24КНТ-7', callback_data='pot3_gr7')
    btn2 = InlineKeyboardButton(text='23КНТ-8', callback_data='pot3_gr8')
    btn3 = InlineKeyboardButton(text='24КНТ-9', callback_data='pot3_gr9')
    kb.add(btn1, btn2, btn3)
    return kb

#Расписание ГРУППА 1

@dp.callback_query_handler(text=['pot1_gr1', 'pot1_gr2', 'pot1_gr3'])
async def first_btn_process(call: types.CallbackQuery):
    if call.data == 'pot1_gr1':
        await call.message.answer(text="Выберите день недели",
                                  parse_mode=ParseMode.MARKDOWN,
                                  reply_markup=ned_1_1())
    elif call.data == 'pot1_gr2':
        await call.message.answer(text="Выберите день недели",
                                  parse_mode=ParseMode.MARKDOWN,
                                  reply_markup=ned_1_2())

    else:
        await call.message.answer(text="Выберите день недели",
                                  parse_mode=ParseMode.MARKDOWN,
                                  reply_markup=ned_1_3())

def ned_1_1():
    kb = InlineKeyboardMarkup()
    btn1 = InlineKeyboardButton(text='Расписание на всю неделю', callback_data='ful_1_1')
    btn2 = InlineKeyboardButton(text='ПН', callback_data='mon_1_1')
    btn3 = InlineKeyboardButton(text='ВТ', callback_data='tue_1_1')
    btn4 = InlineKeyboardButton(text='СР', callback_data='wed_1_1')
    btn5 = InlineKeyboardButton(text='ЧТ', callback_data='th_1_1')
    btn6 = InlineKeyboardButton(text='ПТ', callback_data='fr_1_1')
    btn7 = InlineKeyboardButton(text='СБ', callback_data='su_1_1')
    kb.add(btn2, btn3, btn4, btn5, btn6, btn7, btn1)
    return kb

@dp.callback_query_handler(text=['ful_1_1', 'mon_1_1', 'tue_1_1', 'wed_1_1', 'th_1_1', 'fr_1_1', 'su_1_1'])
async def first_btn_process(call: types.CallbackQuery):
    if call.data == 'ful_1_1':
        await call.message.answer(text="Лови расписание",
                                  parse_mode=ParseMode.MARKDOWN)
    elif call.data == 'mon_1_1':
        await call.message.answer(text="Лови расписание",
                                  parse_mode=ParseMode.MARKDOWN)
    elif call.data == 'tue_1_1':
        await call.message.answer(text="Лови расписание",
                                  parse_mode=ParseMode.MARKDOWN)
    elif call.data == 'wed_1_1':
        await call.message.answer(text="Лови расписание",
                                  parse_mode=ParseMode.MARKDOWN)
    elif call.data == 'th_1_1':
        await call.message.answer(text="Лови расписание",
                                  parse_mode=ParseMode.MARKDOWN)
    elif call.data == 'fr_1_1':
        await call.message.answer(text="Лови расписание",
                                  parse_mode=ParseMode.MARKDOWN)
    else:
        await call.message.answer(text="Лови расписание",
                                  parse_mode=ParseMode.MARKDOWN)




def manager_kb():
    kb = InlineKeyboardMarkup()
    btn = InlineKeyboardButton(text="Чат с менеджером", callback_data='manager', url='http://t.me/deccersw')
    kb.add(btn)
    return kb

if __name__ == '__main__':
    executor.start_polling(dp, skip_updates=True)