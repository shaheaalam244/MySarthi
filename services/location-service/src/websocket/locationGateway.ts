import { Server, Socket } from 'socket.io';

export const setupLocationGateway = (io: Server) => {
  io.on('connection', (socket: Socket) => {
    console.log('Client connected to Location Gateway:', socket.id);

    // Driver -> Server: Real-time GPS update
    socket.on('driver:location:update', (data) => {
      // Process and broadcast location update
      // Example: save to Redis, then emit passenger:driver:track
    });

    // Passenger -> Server: Emergency trigger
    socket.on('sos:alert', (data) => {
      // Process SOS alert and notify emergency contacts/authorities
    });

    // Note: The following events are outgoing from Server to Client
    // emit('passenger:driver:track', locationData);
    // emit('ride:status:change', statusData);

    socket.on('disconnect', () => {
      console.log('Client disconnected:', socket.id);
    });
  });
};
