import { Request, Response } from 'express';

export const bookRide = async (req: Request, res: Response) => {
  res.status(201).json({ message: 'Instant ride booking stub' });
};

export const scheduleRide = async (req: Request, res: Response) => {
  res.status(201).json({ message: 'Scheduled ride stub' });
};

export const shareRide = async (req: Request, res: Response) => {
  res.status(201).json({ message: 'Carpooling request stub' });
};

export const getRide = async (req: Request, res: Response) => {
  res.status(200).json({ message: 'Ride details stub' });
};

export const cancelRide = async (req: Request, res: Response) => {
  res.status(200).json({ message: 'Cancel ride stub' });
};

export const getRideHistory = async (req: Request, res: Response) => {
  res.status(200).json({ message: 'Passenger ride history stub' });
};

export const estimateFare = async (req: Request, res: Response) => {
  res.status(200).json({ message: 'Fare estimate stub' });
};
