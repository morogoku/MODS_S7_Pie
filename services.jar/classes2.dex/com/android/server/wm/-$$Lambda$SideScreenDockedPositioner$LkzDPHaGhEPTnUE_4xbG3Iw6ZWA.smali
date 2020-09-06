.class public final synthetic Lcom/android/server/wm/-$$Lambda$SideScreenDockedPositioner$LkzDPHaGhEPTnUE_4xbG3Iw6ZWA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/SideScreenDockedPositioner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SideScreenDockedPositioner;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SideScreenDockedPositioner$LkzDPHaGhEPTnUE_4xbG3Iw6ZWA;->f$0:Lcom/android/server/wm/SideScreenDockedPositioner;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SideScreenDockedPositioner$LkzDPHaGhEPTnUE_4xbG3Iw6ZWA;->f$0:Lcom/android/server/wm/SideScreenDockedPositioner;

    invoke-static {v0}, Lcom/android/server/wm/SideScreenDockedPositioner;->lambda$onDragEnded$0(Lcom/android/server/wm/SideScreenDockedPositioner;)V

    return-void
.end method
