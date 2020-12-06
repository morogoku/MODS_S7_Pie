.class public final enum Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;
.super Ljava/lang/Enum;
.source "CCMProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/keystore/CCMProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessControlMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

.field public static final enum AFW:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

.field public static final enum KNOX_DEFAULT:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

.field public static final enum LOCK_STATE:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

.field public static final enum PASSWORD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

.field public static final enum TRUSTED_PINPAD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

.field public static final enum TRUSTED_UI:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

.field public static final enum USER_AUTH:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const-string v1, "LOCK_STATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    new-instance v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const-string v1, "PASSWORD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->PASSWORD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    new-instance v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const-string v1, "TRUSTED_UI"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->TRUSTED_UI:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    new-instance v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const-string v1, "TRUSTED_PINPAD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    new-instance v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const-string v1, "AFW"

    const/4 v6, 0x4

    const/16 v7, 0xf

    invoke-direct {v0, v1, v6, v7}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->AFW:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    new-instance v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const-string v1, "KNOX_DEFAULT"

    const/4 v7, 0x5

    const/16 v8, 0x10

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->KNOX_DEFAULT:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    new-instance v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const-string v1, "USER_AUTH"

    const/4 v8, 0x6

    const/16 v9, 0x11

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->USER_AUTH:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    sget-object v1, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->PASSWORD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->TRUSTED_UI:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->AFW:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->KNOX_DEFAULT:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->USER_AUTH:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    aput-object v1, v0, v8

    sput-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->$VALUES:[Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->$VALUES:[Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->value:I

    return v0
.end method
