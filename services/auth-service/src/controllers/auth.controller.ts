import { Request, Response } from 'express';

export const register = async (req: Request, res: Response) => {
  res.status(201).json({ message: 'New user registration stub' });
};

export const login = async (req: Request, res: Response) => {
  res.status(200).json({ message: 'Phone + OTP login stub' });
};

export const sendOtp = async (req: Request, res: Response) => {
  res.status(200).json({ message: 'Send OTP via SMS stub' });
};

export const verifyOtp = async (req: Request, res: Response) => {
  res.status(200).json({ message: 'Verify OTP stub' });
};

export const refresh = async (req: Request, res: Response) => {
  res.status(200).json({ message: 'Refresh access token stub' });
};

export const logout = async (req: Request, res: Response) => {
  res.status(200).json({ message: 'Revoke token stub' });
};

export const enableMfa = async (req: Request, res: Response) => {
  res.status(200).json({ message: 'Enable 2FA stub' });
};
