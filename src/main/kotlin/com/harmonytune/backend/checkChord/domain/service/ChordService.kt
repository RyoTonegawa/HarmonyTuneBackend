package com.harmonytune.backend.checkChord.domain.service

import org.springframework.stereotype.Service
import com.harmonytune.backend.checkChord.domain.model.Chord
import com.harmonytune.backend.checkChord.domain.dto.degreeService.GetDegreeDto
import org.springframework.http.HttpStatus
import org.springframework.web.server.ResponseStatusException
data class ChordData(
    val rootDegree: Double,
    val degreeList: List<Double>,
    val quality: String
)
data class ChordNameData(
    val chordName: String
)

public data class DetermineChordDto(
    val chordDegreeName: String,
    val rootNoteNumber: Int,
    val rootDegree: Double,
    val degreeList: List<Double>,
    val quality: String
)
@Service
class ChordService {
    private val keyCChordNameMap = mapOf(
        "I_MAJOR" to ChordNameData( "C Major"),
        "II_MINOR" to ChordNameData ( "D minor"),
        "III_MINOR" to ChordNameData( "E minor"),
        "IV_MAJOR" to ChordNameData( "F Major"),
        "V_MAJOR" to ChordNameData( "G Major"),
        "VI_MINOR" to ChordNameData( "A minor"),
        "VII_DIMINISHED" to ChordNameData("B diminished")
    )
    private val keyDChordNameMap = mapOf(
        "I_MAJOR" to ChordNameData( "D Major"),  
        "II_MINOR" to ChordNameData( "E minor"),
        "III_MINOR" to ChordNameData( "F# minor"),
        "IV_MAJOR" to ChordNameData( "G Major"),
        "V_MAJOR" to ChordNameData( "A Major"),
        "VI_MINOR" to ChordNameData( "B minor"),
        "VII_DIMINISHED" to ChordNameData( "C# diminished")
    )
    // RootDegree,semitoneInterval,quality のMap
    private val chordMap = mapOf(
        "I_MAJOR" to ChordData(1.0, listOf(1.0, 3.0, 5.0), "M"),  
        "II_MINOR" to ChordData(2.0, listOf(2.0, 4.0, 6.0), "m"),
        "III_MINOR" to ChordData(3.0, listOf(3.0, 5.0, 7.0), "m"),
        "IV_MAJOR" to ChordData(4.0, listOf(4.0, 6.0, 1.0), "M"),
        "V_MAJOR" to ChordData(5.0, listOf(5.0, 7.0, 2.0), "M"),
        "VI_MINOR" to ChordData(6.0, listOf(6.0, 1.0, 3.0), "m"),
        "VII_DIMINISHED" to ChordData(7.0, listOf(7.0, 2.0, 4.0), "dim(m-5)")
    )

    fun determineChord(
        digreeList: List<GetDegreeDto>,
        noteNumberList: List<Int>
        ): List<DetermineChordDto> {
        // handle edge case
        if (digreeList.isEmpty()) {
            throw IllegalArgumentException("Invalid interval list")
        }
        // semitoneIntervalのみのSetを作成して重複を排除
        val degreeSet = digreeList.map { it.degree }.toSet();

        // chordMapのうち、intervalListに完全に一致するものを探す
        val matchedChordsMap:Map<String, ChordData> = chordMap.filterValues { it.degreeList.toSet() == degreeSet };

        return matchedChordsMap.map { (name, data) ->
            DetermineChordDto(
                name,
                determineRootNoteNumber(
                    data.rootDegree, 
                    digreeList,
                    noteNumberList
                ),
                data.rootDegree,
                data.degreeList,
                data.quality
            )
        }
    }
    /**
     * コードのルートとなる音程を取り出す
     */
    fun determineRootNoteNumber(
        chordToneDegree: Double,
        degreeDtoList: List<GetDegreeDto>,
        noteNumberList: List<Int>
        ): Int {
            var semitoneInterval = -1;
            // デグリーとdegreeDtoListのdegreeを比較して、今回のコードトーンのsemitoneIntervalを取得する
            for (degreeDto in degreeDtoList) {
              if (chordToneDegree== degreeDto.degree) {
                semitoneInterval=degreeDto.semitoneInterval
                break;
              }
            }
            // コードトーンのsemitoneIntervalが取得できなかったらエラー
            if(semitoneInterval == -1){
              throw IllegalArgumentException("Invalid chord tone degree or note number list")
            }
            // noteNumberListの中で、semitoneIntervalと一致するものを探す 
            for(noteNumber in noteNumberList){
              if(noteNumber % 12 == semitoneInterval){
                return noteNumber
              }
            }
            throw IllegalArgumentException("Invalid semitone interval")
    }
}


