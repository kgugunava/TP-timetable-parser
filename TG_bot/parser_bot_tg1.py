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

