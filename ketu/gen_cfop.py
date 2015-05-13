#!/usr/bin/env python
# -*- coding: utf-8 -*-

from __future__ import division, print_function

import pandas as pd
from datetime import datetime

table = pd.read_csv("k2ois_c1.csv")
table["status"] = ["Y" for i in range(len(table))]
table["type"] = ["PC" for i in range(len(table))]
table["notes"] = ["Reported by ketu team arXiv:1502.04715"
                  for i in range(len(table))]
table[(table.disposition == " Planet") |
      (table.disposition == " Candidate")].to_csv(
          "binary-status-{0}-001.txt"
          .format(datetime.now().strftime("%Y%m%d")),
          columns=["EPIC", "type", "status", "notes"],
          header=["EPIC ID", "Type", "Status", "Notes"],
          index=False,
          sep="|"
)
