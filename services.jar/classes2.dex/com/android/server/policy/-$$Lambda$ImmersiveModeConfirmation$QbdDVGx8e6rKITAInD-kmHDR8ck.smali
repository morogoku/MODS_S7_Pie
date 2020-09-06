.class public final synthetic Lcom/android/server/policy/-$$Lambda$ImmersiveModeConfirmation$QbdDVGx8e6rKITAInD-kmHDR8ck;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/policy/ImmersiveModeConfirmation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$ImmersiveModeConfirmation$QbdDVGx8e6rKITAInD-kmHDR8ck;->f$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$ImmersiveModeConfirmation$QbdDVGx8e6rKITAInD-kmHDR8ck;->f$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->lambda$showNextButton$0(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    return-void
.end method
