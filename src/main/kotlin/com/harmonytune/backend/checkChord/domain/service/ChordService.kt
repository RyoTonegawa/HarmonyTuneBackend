package com.harmonytune.backend.checkChord.domain.service

import org.springframework.stereotype.Service
import com.harmonytune.backend.checkChord.domain.model.Chord
import com.harmonytune.backend.checkChord.infrastructure.ChordMasterRepository
import org.springframework.http.HttpStatus
import org.springframework.web.server.ResponseStatusException
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import retrofit2.HttpException

val noteNameMap = mapOf(
    0 to "C",
    1 to "C#",
    2 to "D",
    3 to "D#",
    4 to "E",
    5 to "F",
    6 to "F#",
    7 to "G",
    8 to "G#",
    9 to "A",
    10 to "A#",
    11 to "B"
)

public data class DetermineChordDto(
    val rootNoteName:String,
    val chordDegreeName: String,
    val rootNoteNumber: Int,
    val rootDegree: Double,
    val degreeInChordList: List<String>,
    val chordToneList:List<String>
)
@Service
class ChordService(
    private val degreeService: DegreeService,
    private val chordMasterRepository: ChordMasterRepository
    ) {
        fun determineChord(
            noteNumberList: List<Int>
            ): List<DetermineChordDto> {
            // 逆引き用のマップ（"C" → 0, "C#" → 1, ...）
            val inverseNoteNumberMap: Map<String, Int> = noteNameMap.entries.associate { (key, value) -> value to key }
            val noteNameList: List<String> = noteNumberList.map { noteNumber -> 
                noteNameMap[noteNumber%12] ?: throw IllegalArgumentException("Invalid note number: $noteNumber") 
            }
            // Kotlin Coroutinesで非同期呼び出し
            val chordMasters = runBlocking {
                chordMasterRepository.getChordMasters(noteNameList)
            }
            if (chordMasters.isEmpty()) {
                throw ResponseStatusException(HttpStatus.BAD_REQUEST, "No matching chords found")
            }
            // ChordMasterリストをDetermineChordDtoに変換
            return chordMasters.map{ chordMaster ->
                //degreesのJSON Bの最初の要素を取得
                val rootDegree = (inverseNoteNumberMap[chordMaster.root]?: 
                    throw IllegalArgumentException("unexpected root")).toDouble();

                val rootNoteNumber = noteNumberList.filter{ eachNoteNumber ->
                    (eachNoteNumber%12.0) == rootDegree
                }
                DetermineChordDto(
                    rootNoteName = chordMaster.root,
                    chordDegreeName = chordMaster.chordName,
                    rootNoteNumber = rootNoteNumber[0],
                    rootDegree = rootDegree,
                    degreeInChordList = chordMaster.degrees,
                    chordToneList=  chordMaster.tones
                )
            }
        }
}


