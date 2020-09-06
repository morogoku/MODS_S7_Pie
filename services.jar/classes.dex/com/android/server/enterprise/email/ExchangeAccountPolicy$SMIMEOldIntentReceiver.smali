.class Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEOldIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExchangeAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SMIMEOldIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEOldIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 29

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v0, "ExchangeAccountPolicy/LegacyReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received Intent - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-nez v3, :cond_2a

    const-string v0, "ExchangeAccountPolicy/LegacyReceiver"

    const-string/jumbo v5, "failed. action is null."

    invoke-static {v0, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2a
    const-string v0, "com.samsung.edm.intent.action.ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c4

    const-string v0, "ExchangeAccountPolicy/LegacyReceiver"

    const-string v5, "Received - ACTION_ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    invoke-static {v0, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "result"

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v0, "account_id"

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    const-string/jumbo v0, "smime_type"

    const/4 v8, -0x1

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v0, "certificate_result_id"

    invoke-virtual {v2, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    :try_start_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "S"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-result-object v0

    if-eqz v0, :cond_194

    iget-object v9, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v9, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v16, v9

    iget-object v9, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v12, v9, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-ne v5, v8, :cond_190

    const-wide/16 v8, 0x0

    cmp-long v8, v14, v8

    if-lez v8, :cond_190

    const/16 v22, 0x0

    if-nez v13, :cond_d2

    iget-object v8, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v8, :cond_a9

    iget-object v8, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEOldIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    iget-object v9, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_8c} :catch_1b1

    const/16 v17, 0x2

    const/16 v18, 0x1

    move-wide v10, v14

    move v2, v13

    move/from16 v13, v17

    move-wide/from16 v24, v14

    move/from16 v14, v18

    :try_start_98
    # invokes: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z
    invoke-static/range {v8 .. v14}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$500(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    move-result v8

    move/from16 v22, v8

    const-string v8, "ExchangeAccountPolicy/LegacyReceiver"

    const-string/jumbo v9, "release SMIME Certificate for Enryption (Alias) by null."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v8, v22

    goto :goto_d7

    :cond_a9
    move v2, v13

    move-wide/from16 v24, v14

    iget-object v15, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEOldIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    const/16 v20, 0x1

    const-string v21, "ForceSmimeCertForEncryption"

    move/from16 v17, v12

    move-wide/from16 v18, v24

    # invokes: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z
    invoke-static/range {v15 .. v21}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$600(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z

    move-result v8

    const-string v9, "ExchangeAccountPolicy/LegacyReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "force SMIME Certificate for Enryption (Alias). ret = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    :cond_d2
    move v2, v13

    move-wide/from16 v24, v14

    move/from16 v8, v22

    :goto_d7
    const/4 v9, 0x1

    if-ne v2, v9, :cond_126

    iget-object v9, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v9, :cond_fc

    iget-object v9, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEOldIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    iget-object v10, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    const/16 v22, 0x3

    const/16 v23, 0x1

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-wide/from16 v19, v24

    move/from16 v21, v12

    # invokes: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z
    invoke-static/range {v17 .. v23}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$500(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    move-result v9

    move v8, v9

    const-string v9, "ExchangeAccountPolicy/LegacyReceiver"

    const-string/jumbo v10, "release SMIME Certificate for Signing (Alias) by null."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_126

    :cond_fc
    iget-object v9, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEOldIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    const/16 v22, 0x1

    const-string v23, "ForceSmimeCertForSigning"

    move-object/from16 v17, v9

    move/from16 v18, v16

    move/from16 v19, v12

    move-wide/from16 v20, v24

    # invokes: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z
    invoke-static/range {v17 .. v23}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$600(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z

    move-result v9

    move v8, v9

    const-string v9, "ExchangeAccountPolicy/LegacyReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "force SMIME Certificate for Signing (Alias). ret = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_126
    :goto_126
    if-eqz v8, :cond_15c

    iget-object v9, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v9, :cond_144

    const-string v9, "ExchangeAccountPolicy/LegacyReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "success to release SMIME Certificate (Alias) : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_193

    :cond_144
    const-string v9, "ExchangeAccountPolicy/LegacyReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "success to SMIME Certificate (Alias) : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_193

    :cond_15c
    iget-object v9, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v9, :cond_178

    const-string v9, "ExchangeAccountPolicy/LegacyReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed to release SMIME Certificate (Alias) : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_193

    :cond_178
    const-string v9, "ExchangeAccountPolicy/LegacyReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed to SMIME Certificate (Alias)."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_193

    :cond_190
    move v2, v13

    move-wide/from16 v24, v14

    :goto_193
    goto :goto_1ae

    :cond_194
    move v2, v13

    move-wide/from16 v24, v14

    const-string v8, "ExchangeAccountPolicy/LegacyReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "failed. no registed work. id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_1ae} :catch_1af

    :goto_1ae
    goto :goto_1bc

    :catch_1af
    move-exception v0

    goto :goto_1b5

    :catch_1b1
    move-exception v0

    move v2, v13

    move-wide/from16 v24, v14

    :goto_1b5
    const-string v8, "ExchangeAccountPolicy/LegacyReceiver"

    const-string v9, "Failed to apply SMIME Alis Policy on success."

    invoke-static {v8, v9, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1bc
    iget-object v0, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEOldIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    move-wide/from16 v8, v24

    # invokes: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendSMIMEAliasResultIntent(JII)V
    invoke-static {v0, v8, v9, v5, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$700(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;JII)V

    goto :goto_1cc

    :cond_1c4
    const-string v0, "ExchangeAccountPolicy/LegacyReceiver"

    const-string/jumbo v2, "no Defined Intent."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1cc
    return-void
.end method
