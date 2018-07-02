if (streamCardId % 2 === 1) {
				if (_selector.count(streamSliceLeftElem.children(".stream-li")) == 0) {
					streamSliceLeftElem.append(streamCardCode);
				}else {
					streamSliceLeftElem.children(".stream-li").first().before(streamCardCode);
				}
			}else {
				if (_selector.count(streamSliceRightElem.children(".stream-li")) == 0) {
					streamSliceRightElem.append(streamCardCode);
				}else {
					streamSliceRightElem.children(".stream-li").first().before(streamCardCode);
				}
			}
			/*
			if (_selector.count(streamSliceLeftElem.children(".stream-li")) == 0 && _selector.count(streamSliceRightElem.children(".stream-li")) == 0) {
				streamSliceLeftElem.append(streamCardCode);
			}else {
				if (_selector.count(streamSliceLeftElem.children(".stream-li")) > _selector.count(streamSliceRightElem.children(".stream-li"))) {
					if (_selector.count(streamSliceRightElem.children(".stream-li")) == 0) {
						streamSliceRightElem.append(streamCardCode);
					}else {
						streamSliceRightElem.children(".stream-li").first().before(streamCardCode);
					}
				}else {
					if (_selector.count(streamSliceLeftElem.children(".stream-li")) == 0) {
						streamSliceLeftElem.append(streamCardCode);
					}else {
						streamSliceLeftElem.children(".stream-li").first().before(streamCardCode);
					}
				}
			}
			*/
			if (_selector.count(streamSliceLeftElem.children(".stream-li")) == 0 && _selector.count(streamSliceRightElem.children(".stream-li")) == 0) {
						streamSliceLeftElem.append(streamCardCode);
					}else {
						if (_selector.count(streamSliceLeftElem.children(".stream-li")) > _selector.count(streamSliceRightElem.children(".stream-li"))) {
							if (_selector.count(streamSliceRightElem.children(".stream-li")) == 0) {
								streamSliceRightElem.append(streamCardCode);
							}else {
								streamSliceRightElem.children(".stream-li").first().before(streamCardCode);
							}
						}else {
							if (_selector.count(streamSliceLeftElem.children(".stream-li")) == 0) {
								streamSliceLeftElem.append(streamCardCode);
							}else {
								streamSliceLeftElem.children(".stream-li").first().before(streamCardCode);
							}
						}
					}