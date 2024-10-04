from aiogram.types import InlineKeyboardMarkup, InlineKeyboardButton

def get_main_keyboard() -> InlineKeyboardMarkup:
    """ Дает клавиаутуру для главного меню

    """

    ikb = InlineKeyboardMarkup(inline_keyboard=[
        [InlineKeyboardButton(text='Кнопка 1', callback_data='btn_1'),]
    ])

    return ikb