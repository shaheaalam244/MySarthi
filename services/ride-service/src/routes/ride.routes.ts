import { Router } from 'express';
import * as RideController from '../controllers/ride.controller';

const router = Router();

router.post('/book', RideController.bookRide);
router.post('/schedule', RideController.scheduleRide);
router.post('/share', RideController.shareRide);
router.get('/history', RideController.getRideHistory);
router.post('/estimate', RideController.estimateFare);
router.get('/:id', RideController.getRide);
router.patch('/:id/cancel', RideController.cancelRide);

export default router;
