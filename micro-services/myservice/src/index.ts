import 'babel-polyfill'

async function log (name) {
  await sleep(5000)
  console.log(name)
}

function sleep (ms) {
  ms = ms || 0
  return new Promise(function (resolve) {
    setTimeout(resolve, ms)
  })
}

log('Wake up miguel!!!')
