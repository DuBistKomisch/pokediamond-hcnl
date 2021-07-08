#include "SND_wave.h"

#include "SND_channel.h"
#include "SND_work.h"

void SND_InvalidateWave(const void *start, const void *end) {
    for (u8 i = 0; i < SND_CHANNEL_COUNT; i++) {
        struct SNDExChannel *chn = &SNDi_Work.channels[i];

        if (chn->flags.active && chn->type == 0 && start <= chn->waveDataPtr && chn->waveDataPtr <= end) {
            chn->flags.start = FALSE;
            SND_StopChannel(i, 0);
        }
    }
}
