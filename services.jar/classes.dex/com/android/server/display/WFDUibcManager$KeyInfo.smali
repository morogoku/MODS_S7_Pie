.class Lcom/android/server/display/WFDUibcManager$KeyInfo;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyInfo"
.end annotation


# instance fields
.field public keyFlag:I

.field public keyRepeatCount:I

.field public keyTime:J


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/WFDUibcManager$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/display/WFDUibcManager$KeyInfo;-><init>()V

    return-void
.end method
