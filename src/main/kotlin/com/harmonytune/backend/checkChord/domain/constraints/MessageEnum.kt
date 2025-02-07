package com.harmonytune.backend.checkChord.domain.constraints

import org.springframework.web.server.ResponseStatusException
import org.springframework.http.HttpStatus

enum class MessageEnum(
  val message :String){
  INVALID_DEGREE_LIST("Invalid degree list");

  companion object{
    fun fromMessage(message:String):String{
      return values().find{
        it.message == message
      }?.message ?:
      throw ResponseStatusException(
        HttpStatus.BAD_REQUEST,
        "Invalid message"
      )
    }
  }
}
