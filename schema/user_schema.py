from pydantic import BaseModel

class UserSchema(BaseModel):
    id: int | None
    name: str
    username: str
    password: str


class UpdateUserSchema(BaseModel):
    name: str = None
    username: str = None
    password: str = None
