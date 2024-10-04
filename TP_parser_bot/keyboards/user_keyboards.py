from aiogram.types import InlineKeyboardMarkup, InlineKeyboardButton


def get_ready_keyboard() -> InlineKeyboardMarkup:
    """ Создает инлайн клавиатуру для /start, проверка на готовность пользователя пройти дальнейшие действия
    """

    ikb = InlineKeyboardMarkup(inline_keyboard=[[InlineKeyboardButton(text='Ready?', callback_data='user_ready'), ]])

    return ikb
