import { Router } from 'express';
import * as AuthController from '../controllers/auth.controller';

const router = Router();

router.post('/register', AuthController.register);
router.post('/login', AuthController.login);
router.post('/otp/send', AuthController.sendOtp);
router.post('/otp/verify', AuthController.verifyOtp);
router.post('/refresh', AuthController.refresh);
router.post('/logout', AuthController.logout);
router.post('/mfa/enable', AuthController.enableMfa);

export default router;
