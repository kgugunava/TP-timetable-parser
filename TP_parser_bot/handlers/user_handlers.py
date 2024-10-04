from aiogram import types, Router
from aiogram.dispatcher import router
from aiogram.filters import CommandStart

from TP_parser_bot.keyboards.user_keyboards import get_ready_keyboard  # импорт инлайн клавы

router = Router()


@router.message(CommandStart())
async def welcome(message: types.Message):
    await message.answer(
        text="РАСПИСАТЬ: Вводное сообщение, информирование юзера, проверка готовности",
        reply_markup=get_ready_keyboard()
    )


@router.callback_query()
async def check_ready(callback: types.CallbackQuery):
    """ Удаляет стартовое сообщение бота + здесь нужно будет вызвать ф-ию регистрации/
    валидации юзера, как студента для получения доступа к функционалу бота
    """
    await callback.message.answer(text="Я сейчас удалю сообщение выше")
    await callback.message.delete()


def setup_handlers(dispatcher) -> None:
    dispatcher.include_router(router)
