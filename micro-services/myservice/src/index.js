var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments)).next());
    });
};
import 'babel-polyfill';
function log(name) {
    return __awaiter(this, void 0, void 0, function* () {
        yield sleep(5000);
        console.log(name);
    });
}
function sleep(ms) {
    ms = ms || 0;
    return new Promise(function (resolve) {
        setTimeout(resolve, ms);
    });
}
log('Wake up miguel!!!');
