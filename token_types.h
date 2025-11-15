#ifndef TOKEN_TYPES_H
#define TOKEN_TYPES_H

#define T_VAR 256
#define T_IF 257
#define T_THEN 258
#define T_ELSE 259

#define T_WHILE 260
#define T_FOR 261
#define T_BREAK 262
#define T_CONTINUE 263
#define T_RETURN 264

#define T_CLASS 265
#define T_FUNK 266

#define T_TRUE 267
#define T_FALSE 268
#define T_NULL 269

#define T_AND 270
#define T_OR 271

#define T_PRINT 272

#define T_IDENTIFIER 300
#define T_NUMBER 301
#define T_FLOAT 302
#define T_STRING 303

#define T_PLUS 350
#define T_MINUS 351
#define T_MULTIPLY 352
#define T_DIVIDE 353

#define T_GREATER 400
#define T_LESSER 401
#define T_GREATER_EQ 402
#define T_LESSER_EQ 403
#define T_NOT_EQ 404
#define T_EQ 405
#define T_ASSIGN 406

#define T_LPAREN 450
#define T_RPAREN 451
#define T_LBRACE 452
#define T_RBRACE 453
#define T_SEMICOLON 454

#define T_EOF 600
#define T_UNKNOWN 601
#define T_NEWLINE 602

const char* tokenTypeToString(int type) {
    switch(type) {

        case T_VAR: return "T_VAR";
        case T_IF: return "T_IF";
        case T_THEN: return "T_THEN";
        case T_ELSE: return "T_ELSE";
        case T_WHILE: return "T_WHILE";
        case T_FOR: return "T_FOR";
        case T_BREAK: return "T_BREAK";
        case T_CONTINUE: return "T_CONTINUE";
        case T_RETURN: return "T_RETURN";
        case T_CLASS: return "T_CLASS";
        case T_FUNK: return "T_FUNK";
        case T_TRUE: return "T_TRUE";
        case T_FALSE: return "T_FALSE";
        case T_NULL: return "T_NULL";
        case T_AND: return "T_AND";
        case T_OR: return "T_OR";
        case T_PRINT: return "T_PRINT";
        case T_IDENTIFIER: return "T_IDENTIFIER";
        case T_NUMBER: return "T_NUMBER";
        case T_FLOAT: return "T_FLOAT";
        case T_STRING: return "T_STRING";
        case T_PLUS: return "T_PLUS";
        case T_MINUS: return "T_MINUS";
        case T_MULTIPLY: return "T_MULTIPLY";
        case T_DIVIDE: return "T_DIVIDE";
        case T_GREATER: return "T_GREATER";
        case T_LESSER: return "T_LESSER";
        case T_GREATER_EQ: return "T_GREATER_EQ";
        case T_LESSER_EQ: return "T_LESSER_EQ";
        case T_NOT_EQ: return "T_NOT_EQ";
        case T_EQ: return "T_EQ";
        case T_ASSIGN: return "T_ASSIGN";
        case T_LPAREN: return "T_LPAREN";
        case T_RPAREN: return "T_RPAREN";
        case T_LBRACE: return "T_LBRACE";
        case T_RBRACE: return "T_RBRACE";
        case T_SEMICOLON: return "T_SEMICOLON";
        case T_EOF: return "T_EOF";
        case T_UNKNOWN: return "T_UNKNOWN";
        case T_NEWLINE: return "T_NEWLINE";
        default: return "UNKNOWN";
    }
}

#endif