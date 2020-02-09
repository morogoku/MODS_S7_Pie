.class final Lcom/android/server/am/SideScreenManagerService$H;
.super Landroid/os/Handler;
.source "SideScreenManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SideScreenManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SideScreenManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/SideScreenManagerService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/SideScreenManagerService$H;->this$0:Lcom/android/server/am/SideScreenManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method
