.class public final enum Lcom/samsung/android/knox/dlp/DLPConstants$Optype;
.super Ljava/lang/Enum;
.source "DLPConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/dlp/DLPConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Optype"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/dlp/DLPConstants$Optype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

.field public static final enum CONSUME:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

.field public static final enum DOPROTECT:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

.field public static final enum GETATTRIBUTES:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

.field public static final enum GETTEMPLATE:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    const-string v1, "GETTEMPLATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;->GETTEMPLATE:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    new-instance v0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    const-string v1, "DOPROTECT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;->DOPROTECT:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    new-instance v0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    const-string v1, "CONSUME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;->CONSUME:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    new-instance v0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    const-string v1, "GETATTRIBUTES"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;->GETATTRIBUTES:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    sget-object v1, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;->GETTEMPLATE:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;->DOPROTECT:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;->CONSUME:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;->GETATTRIBUTES:Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;->$VALUES:[Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/dlp/DLPConstants$Optype;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/dlp/DLPConstants$Optype;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/dlp/DLPConstants$Optype;->$VALUES:[Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/dlp/DLPConstants$Optype;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/dlp/DLPConstants$Optype;

    return-object v0
.end method
