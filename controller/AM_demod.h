#include "Arduino.h"
#include "AudioStream.h"
#include "arm_math.h"


class AMDemod : public AudioStream
{
public:
	  AMDemod() : AudioStream(1, inputQueueArray) {}
    virtual void update(void);
private:
	audio_block_t *inputQueueArray[1];
};
