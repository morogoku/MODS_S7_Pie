.class public final synthetic Lcom/android/server/policy/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$4$BzHU-N3JjSbnSj9MmN50oZWd3X0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$4;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$4;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$4$BzHU-N3JjSbnSj9MmN50oZWd3X0;->f$0:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$4;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$4$BzHU-N3JjSbnSj9MmN50oZWd3X0;->f$0:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$4;

    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$4;->lambda$onRotationChanged$0(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$4;)V

    return-void
.end method
