package com.harmonytune.backend.checkChord.application

import com.harmonytune.backend.checkChord.domain.model.Chord
import com.harmonytune.backend.checkChord.domain.model.Note
import com.harmonytune.backend.checkChord.domain.service.CreateNoteListDto
import com.harmonytune.backend.checkChord.presentation.dto.CheckChordResponseDto
import org.springframework.stereotype.Service
import com.harmonytune.backend.checkChord.domain.service.DetermineChordDto

@Service
class CreateResponseService {
    fun createResponse(
      chordList: List<DetermineChordDto>,
      CreateNoteListDtoList: List<CreateNoteListDto>
      ): CheckChordResponseDto {
        val chordListDtoList:List<Chord> = 
            chordList.map{ eachChord ->
            val chordTones:List<Note> = CreateNoteListDtoList.find { eachNoteList -> 
              eachNoteList.chordName == eachChord.chordDegreeName
            }?.noteList ?: emptyList()
              Chord(
                eachChord.rootNoteName,
                eachChord.chordDegreeName, 
                eachChord.rootDegree,
                eachChord.rootNoteNumber, 
                eachChord.degreeInChordList,
                chordTones
              )
          }
        return CheckChordResponseDto(
          chordListDtoList
        )
    }
}

