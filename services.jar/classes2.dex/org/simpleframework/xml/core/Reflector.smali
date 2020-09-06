.class final Lorg/simpleframework/xml/core/Reflector;
.super Ljava/lang/Object;
.source "Reflector.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getArrayClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 5

    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lorg/simpleframework/xml/core/Reflector;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_17

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    return-object v3

    :cond_17
    const/4 v3, 0x0

    return-object v3
.end method

.method private static getClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;
    .registers 3

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_f

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lorg/simpleframework/xml/core/Reflector;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 2

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    :cond_8
    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getGenericClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static getClasses(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;
    .registers 5

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    :goto_8
    array-length v3, v0

    if-ge v2, v3, :cond_16

    aget-object v3, v0, v2

    invoke-static {v3}, Lorg/simpleframework/xml/core/Reflector;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    return-object v1
.end method

.method public static getDependent(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .registers 3

    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getType(Ljava/lang/reflect/Field;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    :cond_b
    const-class v1, Ljava/lang/Object;

    return-object v1
.end method

.method public static getDependents(Ljava/lang/reflect/Field;)[Ljava/lang/Class;
    .registers 3

    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getType(Ljava/lang/reflect/Field;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getClasses(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    move-result-object v1

    return-object v1

    :cond_b
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    return-object v1
.end method

.method private static getGenericClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 2

    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_9

    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getArrayClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_9
    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    aget-char v3, v1, v2

    invoke-static {v1}, Lorg/simpleframework/xml/core/Reflector;->isAcronym([C)Z

    move-result v4

    if-nez v4, :cond_19

    invoke-static {v3}, Lorg/simpleframework/xml/core/Reflector;->toLowerCase(C)C

    move-result v4

    aput-char v4, v1, v2

    :cond_19
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2

    :cond_1f
    return-object p0
.end method

.method public static getParameterDependent(Ljava/lang/reflect/Constructor;I)Ljava/lang/Class;
    .registers 4

    invoke-static {p0, p1}, Lorg/simpleframework/xml/core/Reflector;->getParameterType(Ljava/lang/reflect/Constructor;I)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    :cond_b
    const-class v1, Ljava/lang/Object;

    return-object v1
.end method

.method public static getParameterDependent(Ljava/lang/reflect/Method;I)Ljava/lang/Class;
    .registers 4

    invoke-static {p0, p1}, Lorg/simpleframework/xml/core/Reflector;->getParameterType(Ljava/lang/reflect/Method;I)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    :cond_b
    const-class v1, Ljava/lang/Object;

    return-object v1
.end method

.method public static getParameterDependents(Ljava/lang/reflect/Constructor;I)[Ljava/lang/Class;
    .registers 4

    invoke-static {p0, p1}, Lorg/simpleframework/xml/core/Reflector;->getParameterType(Ljava/lang/reflect/Constructor;I)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getClasses(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    move-result-object v1

    return-object v1

    :cond_b
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    return-object v1
.end method

.method public static getParameterDependents(Ljava/lang/reflect/Method;I)[Ljava/lang/Class;
    .registers 4

    invoke-static {p0, p1}, Lorg/simpleframework/xml/core/Reflector;->getParameterType(Ljava/lang/reflect/Method;I)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getClasses(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    move-result-object v1

    return-object v1

    :cond_b
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    return-object v1
.end method

.method private static getParameterType(Ljava/lang/reflect/Constructor;I)Ljava/lang/reflect/ParameterizedType;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    if-le v1, p1, :cond_11

    aget-object v1, v0, p1

    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_11

    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    return-object v2

    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getParameterType(Ljava/lang/reflect/Method;I)Ljava/lang/reflect/ParameterizedType;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    if-le v1, p1, :cond_11

    aget-object v1, v0, p1

    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_11

    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    return-object v2

    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getReturnDependent(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .registers 3

    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getReturnType(Ljava/lang/reflect/Method;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    :cond_b
    const-class v1, Ljava/lang/Object;

    return-object v1
.end method

.method public static getReturnDependents(Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .registers 3

    invoke-static {p0}, Lorg/simpleframework/xml/core/Reflector;->getReturnType(Ljava/lang/reflect/Method;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getClasses(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    move-result-object v1

    return-object v1

    :cond_b
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    return-object v1
.end method

.method private static getReturnType(Ljava/lang/reflect/Method;)Ljava/lang/reflect/ParameterizedType;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    return-object v1

    :cond_c
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getType(Ljava/lang/reflect/Field;)Ljava/lang/reflect/ParameterizedType;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    return-object v1

    :cond_c
    const/4 v1, 0x0

    return-object v1
.end method

.method private static isAcronym([C)Z
    .registers 4

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_6

    return v1

    :cond_6
    aget-char v0, p0, v1

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->isUpperCase(C)Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    const/4 v0, 0x1

    aget-char v0, p0, v0

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->isUpperCase(C)Z

    move-result v0

    return v0
.end method

.method private static isUpperCase(C)Z
    .registers 2

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    return v0
.end method

.method private static toLowerCase(C)C
    .registers 2

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    return v0
.end method
