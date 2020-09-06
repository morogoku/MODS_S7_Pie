.class interface abstract Lcom/android/server/AlarmManagerServiceExt$Sales;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Sales"
.end annotation


# static fields
.field public static final ATT:Z

.field public static final CANADA:Z

.field public static final CHINA:Z

.field public static final JAPAN:Z

.field public static final MPCS:Z

.field public static final NORTH_AMERICA:Z

.field public static final SALES_CODE:Ljava/lang/String;

.field public static final SPR:Z

.field public static final TMO:Z

.field public static final USCC:Z

.field public static final VZW:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string/jumbo v0, "ro.csc.sales_code"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    const-string v0, "VZW"

    sget-object v1, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->VZW:Z

    const-string v0, "ATT"

    sget-object v1, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_40

    const-string v0, "AIO"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "CRI"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_40

    :cond_3e
    move v0, v2

    goto :goto_41

    :cond_40
    :goto_40
    move v0, v1

    :goto_41
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->ATT:Z

    const-string v0, "TMB"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->TMO:Z

    const-string v0, "TMK"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->MPCS:Z

    const-string v0, "SPR"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    const-string v0, "BST"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    const-string v0, "VMU"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    const-string v0, "XAS"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    goto :goto_82

    :cond_80
    move v0, v2

    goto :goto_83

    :cond_82
    :goto_82
    move v0, v1

    :goto_83
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->SPR:Z

    const-string v0, "USC"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    const-string v0, "LRA"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    const-string v0, "ACG"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    goto :goto_a6

    :cond_a4
    move v0, v2

    goto :goto_a7

    :cond_a6
    :goto_a6
    move v0, v1

    :goto_a7
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->USCC:Z

    const-string v0, "RWC"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16a

    const-string v0, "FMC"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16a

    const-string v0, "MTA"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16a

    const-string v0, "CHR"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16a

    const-string v0, "MTS"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16a

    const-string v0, "TLS"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16a

    const-string v0, "KDO"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16a

    const-string v0, "SPC"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16a

    const-string v0, "CLN"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16a

    const-string v0, "BMC"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16a

    const-string v0, "VMC"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16a

    const-string v0, "PCM"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16a

    const-string v0, "SOL"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16a

    const-string v0, "BWA"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16a

    const-string v0, "GLW"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16a

    const-string v0, "VTR"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16a

    const-string v0, "ESK"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16a

    const-string v0, "PMB"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16a

    const-string v0, "XAC"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_168

    goto :goto_16a

    :cond_168
    move v0, v2

    goto :goto_16b

    :cond_16a
    :goto_16a
    move v0, v1

    :goto_16b
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->CANADA:Z

    const-string v0, "CHN"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a2

    const-string v0, "CHU"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a2

    const-string v0, "CTC"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a2

    const-string v0, "CHM"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a2

    const-string v0, "CHC"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    goto :goto_1a2

    :cond_1a0
    move v0, v2

    goto :goto_1a3

    :cond_1a2
    :goto_1a2
    move v0, v1

    :goto_1a3
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->CHINA:Z

    const-string v0, "DCM"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->JAPAN:Z

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->VZW:Z

    if-nez v0, :cond_202

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->ATT:Z

    if-nez v0, :cond_202

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->TMO:Z

    if-nez v0, :cond_202

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->SPR:Z

    if-nez v0, :cond_202

    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->USCC:Z

    if-nez v0, :cond_202

    const-string v0, "XAR"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_202

    const-string v0, "MTR"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_202

    const-string v0, "SPT"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_202

    const-string v0, "CSP"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_202

    const-string v0, "TFN"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_202

    const-string v0, "BNN"

    sget-object v3, Lcom/android/server/AlarmManagerServiceExt$Sales;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_200

    goto :goto_202

    :cond_200
    move v1, v2

    nop

    :cond_202
    :goto_202
    sput-boolean v1, Lcom/android/server/AlarmManagerServiceExt$Sales;->NORTH_AMERICA:Z

    return-void
.end method
