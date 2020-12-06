.class public final synthetic Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$FUN_lZALaDw4RNQu_DZI53jwarU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$FUN_lZALaDw4RNQu_DZI53jwarU;->f$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    iput-object p2, p0, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$FUN_lZALaDw4RNQu_DZI53jwarU;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$FUN_lZALaDw4RNQu_DZI53jwarU;->f$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    iget-object v1, p0, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$FUN_lZALaDw4RNQu_DZI53jwarU;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->lambda$dismissServiceBox$2(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Ljava/lang/String;)V

    return-void
.end method
