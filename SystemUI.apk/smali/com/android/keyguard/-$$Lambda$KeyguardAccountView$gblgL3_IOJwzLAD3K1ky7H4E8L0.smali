.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardAccountView$gblgL3_IOJwzLAD3K1ky7H4E8L0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardAccountView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardAccountView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardAccountView$gblgL3_IOJwzLAD3K1ky7H4E8L0;->f$0:Lcom/android/keyguard/KeyguardAccountView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardAccountView$gblgL3_IOJwzLAD3K1ky7H4E8L0;->f$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAccountView;->lambda$reset$2(Lcom/android/keyguard/KeyguardAccountView;)V

    return-void
.end method
