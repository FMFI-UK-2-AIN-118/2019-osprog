Lab 5
=====

Submit the solution to the [ring buffer](#ringbuffer) task according to the
[Submitting instructions](#submitting) before Tuesday Nov 5 23:59:59.

RingBuffer
----------

Implement a [ring buffer](https://en.wikipedia.org/wiki/Circular_buffer)
(also known as a circular buffer) as `RingBuffer` class.
It should support all the operations defined in the
[`RingBuffer.h`](RingBuffer.h) header.

Note that methods of this class are not supposed to be thread safe.  Instead
users of this class must ensure any required synchronization. This allows us
to make better use of the RingBuffer's api, such as using the `front` and
`remove` methods when we know that at most one "consumer" thread will be
running.

Submitting
----------

Submit your solution by modifying committing required files
under the directory `l05` and creating a pull request against the `l05` branch.

If you split your solution into multiple files, modify appropriately the
dependencies of the `test` target in the Makefile

A correctly created pull request should appear in the
[list of PRs for `l05`](https://github.com/pulls?utf8=%E2%9C%93&q=is%3Aopen+is%3Apr+user%3AFMFI-UK-2-AIN-118+base%3Al05).
