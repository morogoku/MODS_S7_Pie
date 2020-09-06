.class public final synthetic Lcom/android/server/audio/-$$Lambda$AudioService$oAZhhpieXU2la8a0aGOLwnX9848;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/-$$Lambda$AudioService$oAZhhpieXU2la8a0aGOLwnX9848;->f$0:Lcom/android/server/audio/AudioService;

    return-void
.end method


# virtual methods
.method public final onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/audio/-$$Lambda$AudioService$oAZhhpieXU2la8a0aGOLwnX9848;->f$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->lambda$new$2(Lcom/android/server/audio/AudioService;Lcom/samsung/android/hardware/context/SemContextEvent;)V

    return-void
.end method
