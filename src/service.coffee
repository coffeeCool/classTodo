import dd from 'ddeyes'
import toolFuc from './helper'

LC_createClass = (data) ->
  toolFuc(
    'POST'
    data.headers
    "#{data.uri}/#{data.className}?fetchWhenSave=true"
    data.data
  )

LC_getClassOneTodo = (data) ->
  toolFuc(
    'GET'
    data.headers
    "#{data.uri}/#{data.className}/#{data.data.objectId}"
    data.data
  )

LC_updateClassTodo = (data) ->
  toolFuc(
    'PUT'
    data.headers
    "#{data.uri}/#{data.className}/#{data.data.objectId}?fetchWhenSave=true"
    data.data
  )

LC_deleteClassTodo = (data) ->
  toolFuc(
    'DELETE'
    data.headers
    "#{data.uri}/#{data.className}/#{data.data.objectId}"
    data.data.objectId
  )

export {
  LC_createClass
  LC_getClassOneTodo
  LC_updateClassTodo
  LC_deleteClassTodo
}