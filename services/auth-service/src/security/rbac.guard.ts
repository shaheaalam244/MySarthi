/**
 * RBAC Matrix:
 * 
 * Resource          | Passenger | Driver | Admin | Corporate Manager
 * ------------------|-----------|--------|-------|------------------
 * Book Ride         |    ✅     |   ❌   |   ✅  |        ✅
 * Accept Ride       |    ❌     |   ✅   |   ❌  |        ❌
 * View All Rides    |    ❌     |   ❌   |   ✅  |     Own only
 * Manage Users      |    ❌     |   ❌   |   ✅  |   Own employees
 * View Revenue      |    ❌     |  Own   |   ✅  |     Own dept
 * Manage Coupons    |    ❌     |   ❌   |   ✅  |        ❌
 */

import { Request, Response, NextFunction } from 'express';

export const rbacGuard = (allowedRoles: string[]) => {
  return (req: Request, res: Response, next: NextFunction) => {
    // TODO: Implement RBAC logic based on the matrix above
    next();
  };
};
