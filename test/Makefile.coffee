import 'shelljs/make'
import dd from 'ddeyes'
import { 
  LC_createClass
  LC_getClassOneTodo
  LC_updateClassTodo
  LC_deleteClassTodo
} from '../src/index'

config =
  headers:
    'Content-Type': 'application/json'
    'X-LC-Id': 'xY1g1VfwXDcyrMLI0UWUjmKe-gzGzoHsz'
    'X-LC-Key': 'rRvdD9oizDgldNbbIpgFPd1X'
  uri: "https://xy1g1vfw.api.lncld.net/1.1/classes"
  className: 'Todos'

target.all = ->
  data = await LC_createClass
    headers: config.headers
    uri: "#{config.uri}/#{config.className}?fetchWhenSave=true"
    data: 
      company: '武汉和风和乐有限公司'
      main: '旅游、租房'
      location: '武汉'
  data
  dd data

  data_get = await LC_getClassOneTodo
    headers: config.headers
    uri: "#{config.uri}/#{config.className}/#{data.objectId}"
  dd data_get

  data_uptate = await LC_updateClassTodo
    headers: config.headers
    uri: "#{config.uri}/#{config.className}/#{data.objectId}?fetchWhenSave=true"
    data:
      company: '举手帮租有限公司'
      main: '租房'
      location: '北京'
  dd data_uptate

  data_delete = await LC_deleteClassTodo
    headers: config.headers
    uri: "#{config.uri}/#{config.className}/#{data.objectId}"
  dd data_delete
