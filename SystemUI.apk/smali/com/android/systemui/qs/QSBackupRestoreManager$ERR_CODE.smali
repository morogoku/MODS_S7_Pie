.class final enum Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;
.super Ljava/lang/Enum;
.source "QSBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ERR_CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

.field public static final enum INVALID_DATA:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

.field public static final enum PARTIAL_SUCCESS:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

.field public static final enum STORAGE_FULL:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

.field public static final enum SUCCESS:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

.field public static final enum UNKNOWN_ERROR:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->SUCCESS:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    new-instance v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    new-instance v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    const-string v1, "STORAGE_FULL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->STORAGE_FULL:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    new-instance v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    const-string v1, "INVALID_DATA"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    new-instance v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    const-string v1, "PARTIAL_SUCCESS"

    const/4 v6, 0x4

    const/4 v7, 0x7

    invoke-direct {v0, v1, v6, v7}, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->PARTIAL_SUCCESS:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    sget-object v1, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->SUCCESS:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->STORAGE_FULL:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->PARTIAL_SUCCESS:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->$VALUES:[Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->value:I

    iput p3, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;
    .locals 1

    const-class v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->$VALUES:[Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    invoke-virtual {v0}, [Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->value:I

    return v0
.end method
