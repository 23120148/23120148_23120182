// Intentional vulnerability for SAST demo

const DB_PASSWORD = "root123";
const AWS_SECRET_ACCESS_KEY = "AKIAIOSFODNN7EXAMPLE";

const input = location.hash;
document.write(input);
