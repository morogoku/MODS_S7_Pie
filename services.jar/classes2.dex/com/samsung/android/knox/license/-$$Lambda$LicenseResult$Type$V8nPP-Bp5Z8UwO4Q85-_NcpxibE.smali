.class public final synthetic Lcom/samsung/android/knox/license/-$$Lambda$LicenseResult$Type$V8nPP-Bp5Z8UwO4Q85-_NcpxibE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/license/-$$Lambda$LicenseResult$Type$V8nPP-Bp5Z8UwO4Q85-_NcpxibE;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/samsung/android/knox/license/-$$Lambda$LicenseResult$Type$V8nPP-Bp5Z8UwO4Q85-_NcpxibE;->f$0:I

    check-cast p1, Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-static {v0, p1}, Lcom/samsung/android/knox/license/LicenseResult$Type;->lambda$fromKlmStatus$0(ILcom/samsung/android/knox/license/LicenseResult$Type;)Z

    move-result p1

    return p1
.end method
