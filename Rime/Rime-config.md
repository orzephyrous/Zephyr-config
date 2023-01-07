# Rime小狼毫输入法定制方案

定制方案记录文档

## default.custom.yaml

所有输入方案下的定制

- schema_list: 仅保留朙月拼音·简化字

- switch/hotkeys：F4显示【方案选单】

- menu/page_size：候选数设为9（【方案选单】中的选择能一页显示全）

- key_binder/bindings
  
  - tab 在单词间切换
  
  - 翻页：逗号、句号，减号、加号
  
  - Windows 兼容：ctrl+period切换中英标点，shift+space切换全半角

## luna_pinyin_simp.custom.yaml

朙月拼音设置

- menu/page_size：候选数设为9
- translator/dictionary：词库扩充，见下一部分
- engine/filters：增加符号支持
- symbol_support：符号库
- switches：开关（中英、简繁、标点、全半角、符号）
- punctuator：标点
  - import_preset：zephyr_symbol v开头可以输入特定字符，目前含汉语拼音、化学元素简体汉字（元素符号、族、镧系锕系）
  - full_shape：全角输入显示多个unicode字符选项
  - half_shape：半角输入直接上屏中文标点，不提供选项
- ascii_composer：shift切换中英文，直接上屏字母

## zephyr.extended.dict.yaml

词库扩展，包含：

- luna_pinyin：朙月拼音

- clover.phrase：四叶草词组

- chemistry：化学

- chem_elements：元素周期表
  
  - 口诀词组
  
  - 按族输入
  
  - 元素简体汉字表

- sogou_new_words：搜狗词库-网络词语

- THUOCL：清华开源词库
  
  - THUOCL_medical：药品
  
  - THUOCL_animal：动物

- luna_pinyin.poetry：better-rime诗词

## weasel.custom.yaml

把字体修改成霞鹜文楷等宽（LXGW WenKai Mono），主要是为了支持Nh、Ts、Og三个元素的简体汉字
