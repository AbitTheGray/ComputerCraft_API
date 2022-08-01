https://computercraft.info/wiki/Os.pullEvent

| event                 | 1                       | 2                  | 3                              | 4               | 5                           | Description                                                                          |
|-----------------------|-------------------------|--------------------|--------------------------------|-----------------|-----------------------------|--------------------------------------------------------------------------------------|
| `alarm`               | alarmID `number`        |                    |                                |                 |                             | Fired when a time passed to os.setAlarm() is reached                                 |
| `char`                | letter `string`         |                    |                                |                 |                             | Fired when text is typed on the keyboard                                             |
| `disk`                | side `string`           |                    |                                |                 |                             | Fired when a disk is inserted into an adjacent disk drive                            |
| `disk_eject`          | side `string`           |                    |                                |                 |                             | Fired when a disk is removed from an adjacent disk drive                             |
| `http_check`          | url `string`            | success `boolean`  | error reason `string` or `nil` |                 |                             | The http_check event is fired when a URL check finishes.                             |
| `http_success`        | url `string`            | text `table`       |                                |                 |                             | Fired when an attempt to receive text from / post text on a website is successful.   |
| `http_failure`        | url `string`            |                    |                                |                 |                             | Fired when an attempt to receive text from / post text on a website is unsuccessful. |
| `key`                 | keycode `number`        | held `boolean`     |                                |                 |                             | Fired when a key is pressed on the keyboard                                          |
| `key_up`              | keycode `number`        |                    |                                |                 |                             | Fired when a key is released                                                         |
| `modem_message`       | side `string`           | frequency `number` | replyFrequency `number`        | message `any`   | distance travelled `number` | Fired when a modem message is received from the modem                                |
| `monitor_resize`      | side `string`           |                    |                                |                 |                             | Fired when a connected monitor resizes.                                              |
| `monitor_touch`       | side `string`           | x `number`         | y `number`                     |                 |                             | Fired when a player right clicks on a connected advanced monitor.                    |
| `mouse_click`         | button `number`         | x `number`         | y `number`                     |                 |                             | Fired when a mouse button is pressed                                                 |
| `mouse_drag`          | button `number`         | x `number`         | y `number`                     |                 |                             | Fired when the mouse is moved after clicking.                                        |
| `mouse_scroll`        | direction `number`      | x `number`         | y `number`                     |                 |                             | Fired when a mousewheel is scrolled.                                                 |
| `mouse_up`            | button `number`         | x `number`         | y `number`                     |                 |                             | Fired when a mouse button is released                                                |
| `paste`               | clipboard text `string` |                    |                                |                 |                             | Fired when Ctrl + V is pressed on the keyboard                                       |
| `peripheral`          | side `string`           |                    |                                |                 |                             | Fired when peripheral is attached                                                    |
| `peripheral_detach`   | side `string`           |                    |                                |                 |                             | Fired when peripheral is removed                                                     |
| `rednet_message`      | senderID `number`       | message `any`      | protocol `string`              |                 |                             | Fired when a rednet message is received from the rednet API                          |
| `redstone`            |                         |                    |                                |                 |                             | Fired when the state of any of the redstone inputs change                            |
| `speaker_audio_empty` | speaker side `string`   |                    |                                |                 |                             |                                                                                      |
| `task_complete`       | taskID `number`         | success `boolean`  | error `string/nil`             | params... `any` |                             | Fired when an asynchronous task completes.                                           |
| `term_resize`         |                         |                    |                                |                 |                             | Fired when the terminal resizes.                                                     |
| `terminate`           |                         |                    |                                |                 |                             | Fired when a combination of keys CTRL and T is pressed and held for three seconds.   |
| `timer`               | timerID `number`        |                    |                                |                 |                             | Fired when a timeout started by os.startTimer() completes                            |
| `turtle_inventory`    |                         |                    |                                |                 |                             | Fired when the inventory on a Turtle is changed.                                     |
//TODO websocket_*