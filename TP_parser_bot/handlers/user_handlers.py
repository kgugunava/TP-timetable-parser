from aiogram import types, Dispatcher
from aiogram.filters import Command

from TP_parser_bot.keyboards.user_keyboards import get_main_keyboard


async def on_startup(msg: types.Message) -> None:
    """Точка входа нового пользователя, стартовое поведение бота
    """
    reply_text = 'Привет, это начальный текст\n'

    await msg.answer(
        text=reply_text,
        reply_markup=get_main_keyboard()
    )

def register_user_handlers(dp: Dispatcher) -> None:
    """Регистрирует user хендлеры
    """

    dp.message.register(on_startup, Command(commands=['start', 'help']))