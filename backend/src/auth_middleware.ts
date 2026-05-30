import { Request, Response, NextFunction } from 'express';
import { config } from './config';

const ADMIN_SECRET = config.admin.secret;

export interface AuthenticatedRequest extends Request {
  adminId?: string;
}

export const adminAuthMiddleware = (req: AuthenticatedRequest, res: Response, next: NextFunction) => {
  const secret = req.headers['x-admin-secret'];

  if (secret === ADMIN_SECRET) {
    req.adminId = 'admin_001'; // Mock admin ID
    next();
  } else {
    res.status(401).json({ error: 'Unauthorized: Invalid Admin Secret' });
  }
};
