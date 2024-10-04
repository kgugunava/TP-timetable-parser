import asyncio
import sys
import logging
from os import getenv

from dotenv import load_dotenv
from aiogram import Bot, Dispatcher

from TP_parser_bot.handlers.user_handlers import register_user_handlers


def register_handler(dp: Dispatcher) -> None:
    register_user_handlers(dp)


async def main() -> None:
    load_dotenv() #подгружаем переменные из .env в окружение

    token = getenv("BOT_TOKEN")
    bot = Bot(token=token)
    dp = Dispatcher()

    register_handler(dp)

    await dp.start_polling(bot)


if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO, stream=sys.stdout)
    asyncio.run(main())
