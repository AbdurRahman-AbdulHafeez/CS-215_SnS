% Yes, aliasing occurs in sampling process in Q1. 
% Reason: The Nyquist Theorem is not obeyed in it. According to Nyquist Theorem:
% The Sampling Frequency Fs must be greater than or equal to two times of the maximum frequency of CT signal.
% To remove the aliasing effect, we take Fs >= 14Hz due to maximum frequency of x2(t) = cos(14*pi*t) is 7Hz.