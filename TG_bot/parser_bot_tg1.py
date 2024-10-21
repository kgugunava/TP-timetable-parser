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


def manager_kb():
    kb = InlineKeyboardMarkup()
    btn = InlineKeyboardButton(text="Чат с менеджером", callback_data='manager', url='http://t.me/deccersw')
    kb.add(btn)
    return kb

if __name__ == '__main__':
    executor.start_polling(dp, skip_updates=True)