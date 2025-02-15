package com.harmonytune.backend.checkChord.domain.service

import org.springframework.stereotype.Service
import com.harmonytune.backend.checkChord.domain.model.Note
import com.harmonytune.backend.checkChord.domain.model.Chord
import com.harmonytune.backend.checkChord.domain.service.DetermineChordDto

public data class CreateNoteListDto(
  val chordName: String,
  val noteList: List<Note>
)

val noteNameToMod12Map = mapOf(
    "C" to 0,
    "C#" to 1,
    "D" to 2,
    "D#" to 3,
    "E" to 4,
    "F" to 5,
    "F#" to 6,
    "G" to 7,
    "G#" to 8,
    "A" to 9,
    "A#" to 10,
    "B" to 11
)

@Service
class NoteService(
  private val frequencyService: FrequencyService,
  private val degreeService: DegreeService
) {
  fun createNoteList(
    chordList: List<DetermineChordDto>,
    noteNumberList: List<Int>
  ): List<CreateNoteListDto> {
    val noteList = chordList.map{ eachChord ->
      CreateNoteListDto(
        eachChord.chordDegreeName,
        createNote(
          eachChord,
          noteNumberList
        )
      )
    }
    return noteList
  }
  fun createNote(
    determineChordDto:DetermineChordDto,
    noteNumberList:List<Int>,
  ): List<Note> {
    val noteList = determineChordDto.degreeInChordList.map{ eachDegree ->
      val degreeNameIndex = determineChordDto.degreeInChordList.indexOf(eachDegree);

      if (degreeNameIndex == -1) {
          throw IllegalArgumentException("Degree $eachDegree not found in ${determineChordDto.degreeInChordList}")
      }
      val chordTone = determineChordDto.chordToneList[degreeNameIndex];
      // DegreeとNote Number対応づける
      val noteNumber:Int = determineChordToneNoteNumber(
        chordTone,
        noteNumberList
      );
      Note(
        eachDegree,
        noteNumber,
        chordTone,
        frequencyService.calculateCentsDifference(
          eachDegree
        )
      )
    }
    return noteList
  }
  fun getNoteNameWithOctave(noteNumber: Int): String {
    val noteNames = listOf("C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B")
    val noteName = noteNames[noteNumber % 12] // 音名を取得
    val octave = (noteNumber / 12) - 1 // オクターブを計算
    return "$noteName$octave"
  }
  /**
   * chordToneDegreeに対応するノートナンバーを特定する
   */
  fun determineChordToneNoteNumber(
    chordToneNoteName:String,
    noteNumberList: List<Int>
  ): Int {
    // ChordMasterDto.rootの音名に一致するNoteNumberを返す
    // ROOTの音のMOD１２を出す
    // ROOTとのnotenumberの差分がMOD１２と一致するNoteNumberを返す
    val chordToneNumberMod = noteNameToMod12Map[chordToneNoteName]?:
      throw IllegalArgumentException("Not Found in noteNameToMod12Map");

    noteNumberList.map{eachNoteNumber->
      if((eachNoteNumber%12)==chordToneNumberMod){
        return eachNoteNumber;
      }

    }
    throw IllegalArgumentException("Error in determineChordToneNoteNumber");
  }
}
