package com.harmonytune.backend.checkChord.domain.service

import org.springframework.stereotype.Service
import org.springframework.http.HttpStatus
import org.springframework.web.server.ResponseStatusException
import com.harmonytune.backend.checkChord.domain.constraints.DigreeEnum

/**
 * Convert NoteNumber to Digree
 */
@Service
public class ConvertToDigree {
    public fun fromNoteNumber(
        keySignature:String,
        noteNumbers: List<Int>
    ): List<Double> {
        if(keySignature=="C"){
            return noteNumbers.map{ note ->
                val degree = (note%12)+1
                DigreeEnum.fromKeyNumber(degree)
            }
        }
        // Cメジャー以外は今後対応
        throw ResponseStatusException(
            HttpStatus.BAD_REQUEST,
            "Now Key Signature must be C"
        )
    }
}