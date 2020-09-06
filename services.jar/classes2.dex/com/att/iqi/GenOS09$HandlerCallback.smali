.class Lcom/att/iqi/GenOS09$HandlerCallback;
.super Ljava/lang/Object;
.source "GenOS09.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/GenOS09;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerCallback"
.end annotation


# static fields
.field static final MSG_SUBMIT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/att/iqi/GenOS09;


# direct methods
.method private constructor <init>(Lcom/att/iqi/GenOS09;)V
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/GenOS09$HandlerCallback;->this$0:Lcom/att/iqi/GenOS09;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/att/iqi/GenOS09;Lcom/att/iqi/GenOS09$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/att/iqi/GenOS09$HandlerCallback;-><init>(Lcom/att/iqi/GenOS09;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_b

    :cond_6
    iget-object v0, p0, Lcom/att/iqi/GenOS09$HandlerCallback;->this$0:Lcom/att/iqi/GenOS09;

    invoke-virtual {v0}, Lcom/att/iqi/GenOS09;->submit()V

    :goto_b
    return v1
.end method
