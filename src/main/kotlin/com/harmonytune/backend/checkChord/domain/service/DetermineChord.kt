package com.harmonytune.backend.checkChord.domain.service

import org.springframework.stereotype.Service
import com.harmonytune.backend.checkChord.domain.model.Chord
import com.harmonytune.backend.checkChord.domain.constraints.DigreeEnum

@Service
public class DetermineChord {

    public fun determineChord(
        digreeList: List<Double>
    ): List<Chord> {
        val chordList = ChordEnum.fromDegreeList(digreeList)
        return chordList.map{ chordEnum ->
            Chord(digreeList, chordEnum.quality, chordEnum.chordName) 
        }
    }
}
