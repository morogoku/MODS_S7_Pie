.class Lcom/android/server/am/LaunchParamsController$SafeLaunchParams;
.super Lcom/android/server/am/LaunchParamsController$LaunchParams;
.source "LaunchParamsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LaunchParamsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SafeLaunchParams"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 1

    invoke-super {p0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->reset()V

    return-void
.end method
