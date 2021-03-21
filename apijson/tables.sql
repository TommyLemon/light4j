CREATE TABLE `district` (
  `provinceName` varchar(24) NOT NULL COMMENT '省份名称',
  `province` char(6) NOT NULL COMMENT '省份代码',
  `cityName` varchar(33) NOT NULL COMMENT '城市名称',
  `city` char(6) NOT NULL COMMENT '城市代码',
  `countyName` varchar(45) NOT NULL COMMENT '区县名称',
  `county` char(6) NOT NULL COMMENT '区县代码',
  PRIMARY KEY (`county`),
  KEY `idx_province_city_name` (`province`,`city`,`cityName`),
  KEY `idx_city_county_name` (`city`,`county`,`countyName`),
  KEY `idx_province_name` (`province`,`provinceName`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk COMMENT='行政区划';

CREATE TABLE `ecdict` (
  `word` varchar(64) NOT NULL COMMENT '单词',
  `phonetic` varchar(64) NOT NULL COMMENT '音标',
  PRIMARY KEY (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='英语单词和音标';

CREATE TABLE `province` (
  `code` char(2) NOT NULL COMMENT '代码',
  `name` varchar(255) NOT NULL COMMENT '名称',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk COMMENT='省';
CREATE TABLE `city` (
  `code` char(4) NOT NULL COMMENT '代码',
  `name` varchar(255) NOT NULL COMMENT '名称',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk COMMENT='市';
CREATE TABLE `county` (
  `code` char(6) NOT NULL COMMENT '代码',
  `name` varchar(255) NOT NULL COMMENT '名称',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk COMMENT='县';
CREATE TABLE `town` (
  `code` char(9) NOT NULL COMMENT '代码',
  `name` varchar(255) NOT NULL COMMENT '名称',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk COMMENT='乡';
CREATE TABLE `village` (
  `code` char(12) NOT NULL COMMENT '代码',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `type` char(3) NOT NULL DEFAULT '000' COMMENT '111主城区，112城乡结合区，121镇中心区，122镇乡结合区，123特殊区域；210乡中心区，220村庄',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk COMMENT='村';

