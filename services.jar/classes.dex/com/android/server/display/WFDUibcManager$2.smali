.class synthetic Lcom/android/server/display/WFDUibcManager$2;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$server$display$WFDUibcManager$UIBCMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/android/server/display/WFDUibcManager$UIBCMode;->values()[Lcom/android/server/display/WFDUibcManager$UIBCMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/display/WFDUibcManager$2;->$SwitchMap$com$android$server$display$WFDUibcManager$UIBCMode:[I

    :try_start_9
    sget-object v0, Lcom/android/server/display/WFDUibcManager$2;->$SwitchMap$com$android$server$display$WFDUibcManager$UIBCMode:[I

    sget-object v1, Lcom/android/server/display/WFDUibcManager$UIBCMode;->DEFAULT:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    invoke-virtual {v1}, Lcom/android/server/display/WFDUibcManager$UIBCMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Lcom/android/server/display/WFDUibcManager$2;->$SwitchMap$com$android$server$display$WFDUibcManager$UIBCMode:[I

    sget-object v1, Lcom/android/server/display/WFDUibcManager$UIBCMode;->SIDESYNC:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    invoke-virtual {v1}, Lcom/android/server/display/WFDUibcManager$UIBCMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Lcom/android/server/display/WFDUibcManager$2;->$SwitchMap$com$android$server$display$WFDUibcManager$UIBCMode:[I

    sget-object v1, Lcom/android/server/display/WFDUibcManager$UIBCMode;->PRESENTATION:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    invoke-virtual {v1}, Lcom/android/server/display/WFDUibcManager$UIBCMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    :try_start_30
    sget-object v0, Lcom/android/server/display/WFDUibcManager$2;->$SwitchMap$com$android$server$display$WFDUibcManager$UIBCMode:[I

    sget-object v1, Lcom/android/server/display/WFDUibcManager$UIBCMode;->KDDISERVICE:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    invoke-virtual {v1}, Lcom/android/server/display/WFDUibcManager$UIBCMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v0

    :goto_3d
    :try_start_3d
    sget-object v0, Lcom/android/server/display/WFDUibcManager$2;->$SwitchMap$com$android$server$display$WFDUibcManager$UIBCMode:[I

    sget-object v1, Lcom/android/server/display/WFDUibcManager$UIBCMode;->PORTRAIT_DISPLAY:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    invoke-virtual {v1}, Lcom/android/server/display/WFDUibcManager$UIBCMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v0

    :goto_4a
    return-void
.end method
