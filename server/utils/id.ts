import { randomBytes } from 'crypto';

/**
 * Generates a short, unique ID for users
 * Format: 8 characters (base62 encoded)
 * This provides ~218 trillion possible combinations
 */
export function generateShortId(): string {
  // Generate 6 random bytes (48 bits)
  const bytes = randomBytes(6);
  
  // Convert to base62 (0-9, a-z, A-Z)
  const base62 = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
  let result = '';
  
  // Convert bytes to base62
  let value = 0;
  for (let i = 0; i < bytes.length; i++) {
    value = (value << 8) + bytes[i];
  }
  
  // Convert to base62
  while (value > 0) {
    result = base62[value % 62] + result;
    value = Math.floor(value / 62);
  }
  
  // Pad with zeros if needed
  while (result.length < 8) {
    result = '0' + result;
  }
  
  return result;
} 