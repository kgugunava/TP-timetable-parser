import asyncio
import logging
import sys

from aiogram import Bot, Dispatcher
from aiogram.filters import CommandStart
from aiogram.types import Message

TOKEN = "7507939349:AAGIWYDC1DGdRGpajSTRG9uUXFzH1wDUJNQ"
# До релиза можем на этом боте все тестить: t.me/TP_parser_testing_bot
dp = Dispatcher()


@dp.message(CommandStart())
async def start_bot(message: Message) -> None:
    await message.answer("ПРИВЕТСТВЕННОЕ СООБЩЕНИЕ ПОТОМ ДОБАВИТЬ")


# Вся логика поидее тут


async def main() -> None:
    bot = Bot(token=TOKEN)
    await dp.start_polling(bot)


if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO, stream=sys.stdout)
    asyncio.run(main())
