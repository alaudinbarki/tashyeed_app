import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import '/features/download/download.dart';
import '/core/core.dart';

class CaptureQuoteWidget implements UseCase<QuoteImage, GlobalKey> {
  final DownloadRepository _repository;

  CaptureQuoteWidget(this._repository);
  @override
  Future<Either<Failure, QuoteImage>> call(GlobalKey params) async {
    return await _repository.captureQuoteWidget(params);
  }
}
