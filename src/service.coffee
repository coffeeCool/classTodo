import dd from 'ddeyes'
import toolFuc from './helper'

LC_createClass = (data) ->
  toolFuc(
    'POST'
    data.headers
    data.uri
    data.data
  )

LC_getClassOneTodo = (data) ->
  toolFuc(
    'GET'
    data.headers
    data.uri
  )

LC_updateClassTodo = (data) ->
  toolFuc(
    'PUT'
    data.headers
    data.uri
    data.data
  )

LC_deleteClassTodo = (data) ->
  toolFuc(
    'DELETE'
    data.headers
    data.uri
  )

export {
  LC_createClass
  LC_getClassOneTodo
  LC_updateClassTodo
  LC_deleteClassTodo
}