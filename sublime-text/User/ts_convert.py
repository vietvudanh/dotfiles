"""convert time between different format
"""

import sys
import sublime_plugin
import time
import datetime

DEFAULT_FORMAT = "%Y-%m-%d %H:%M:%S"


def _datetime_to_str(dt, format=DEFAULT_FORMAT):
    return datetime.datetime.strftime(dt, format)


def _datetime_to_timestamp(dt):
    return int(time.mktime(dt.timetuple()))


def timestamp_to_str(timestamp):
    return _datetime_to_str(datetime.datetime.fromtimestamp(timestamp))


def str_to_timestamp(time_str, format=DEFAULT_FORMAT):
    return _datetime_to_timestamp(datetime.datetime.strptime(time_str, format))


DEFAULT_FORMAT = "%Y-%m-%d %H:%M:%S"


class TimeStampConverter(sublime_plugin.TextCommand):

    def run(self, edit):
        sel = self.view.sel()  # selection
        # rep = None
        for s in sel:
            sys.stdout.write(s)
            # try:
            #     rep = timestamp_to_str(s)
            # except Exception:
            #     rep = str_to_timestamp(s)
            self.view.replace(edit, s, "hi")
